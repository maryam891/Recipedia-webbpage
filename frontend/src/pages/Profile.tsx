import { CiUser } from "react-icons/ci"
import { useNavigate } from "react-router-dom"
import { AuthContext } from "../AuthContext";
import { useContext } from "react";
import "../css/Profile.css"
import { useEffect } from "react";
import { useState } from "react";
import api from "../api";


interface Profile {
    name: string,
    email: string
}
export default function Profile() {
    const Auth = useContext(AuthContext)
    const navigate = useNavigate()
    const [showProfileErrPopUp, setShowProfileErrPopUp] = useState(false)
    const [userInfo, setUserInfo] = useState<Profile | null>(null)
    const [confirmAccDelete, setConfirmAccDel] = useState(false)
    const [delAcc, setDelAcc] = useState(false)

    //Remove account
    async function handleDelAccount() {
        try {
            const response = await api.delete("/api/removeAccount", {
                data: { id: Auth?.currentUser?.userId }
            })
            if (!response.status) {
                return
            }
            await response.data

            setDelAcc(true)

        }
        catch (error) {
            console.log(error, 'Could not delete account');
        };
    }
    useEffect(() => {
        if (!confirmAccDelete) return;
        const timer = setTimeout(() => {
            Auth?.logout()
            navigate('/Login')
        }, 1400);
        return () => clearTimeout(timer)

    }, [confirmAccDelete, Auth, navigate]);

    useEffect(() => {
        if (Auth?.isLoading) return //wait until session is checked
        if (!Auth?.isLoggedIn) {
            navigate("/Login")
            return
        }

        const getProfile = async () => {
            try {
                const response = await api.get("/api/user")

                const result = response.data
                if (result) {

                    setUserInfo(result);

                }
            }


            catch (error) {
                setShowProfileErrPopUp(true)
                console.log(error, "User does not exist");
            }
        }
        getProfile()
    }, [Auth?.isLoggedIn, Auth?.isLoading, navigate])
    if (Auth?.isLoading) return <div>Loading...</div>


    return (
        <>{delAcc === true &&
            <div className="overlay">
                <div className="removeAccount-popup">
                    <h2 >Delete Account!</h2>
                    <p>Are you sure you want to delete account?</p>
                    <div className="delBtnContainer">
                        <button onClick={() => { setConfirmAccDel(true); setDelAcc(false) }} className="yesDelBtn"   >Yes</button>
                        <button onClick={() => setDelAcc(false)} className="noDelBtn">No</button></div>
                </div></div>}
            {confirmAccDelete === true &&
                <div className="overlay">
                    <div className="removeAccount-popup">
                        <h2 >Account deleted!</h2>
                        <p>Account has been deleted</p>
                    </div></div>}
            {showProfileErrPopUp === true &&
                <div className="overlay">
                    <div className="profilePopUpErr">
                        <h2>User does not exist!</h2>
                        <button onClick={() => setShowProfileErrPopUp(false)} className="profileErrBtn">Ok</button>

                    </div>
                </div>
            }
            <main className="Profile">
                <h1>Profile</h1>
                <div className="profileContainer">
                    <div className="profileHeader">
                        <CiUser className="profileIconImage" />
                        <h2>{userInfo?.name}</h2>
                    </div>

                    <form>
                        <label>Email</label>
                        <input type="text" name="email" defaultValue={userInfo?.email} readOnly ></input>
                    </form>
                    <div className="btnContainer">
                        <button className="logOutBtn" type="submit" onClick={async () => {
                            await Auth?.logout()
                            navigate('/Login')
                        }}>Log out</button>
                        <button className="deleteBtn" onClick={() => handleDelAccount()}>Delete account</button>

                    </div>
                </div>
            </main>


        </>
    )
}
