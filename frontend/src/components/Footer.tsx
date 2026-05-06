import { Link, } from 'react-router-dom'
import "../css/Footer.css"
import { AuthContext } from '../AuthContext';
import { useContext } from 'react';

export default function Footer() {
    const Auth = useContext(AuthContext)
    return (
        <div className='footer-container'>
            <h1 style={{ color: "white", paddingLeft: "10px" }}>Recipedia</h1>
            {Auth?.isLoggedIn ?
                <ul>
                    <li>
                        <Link to="/Home" style={{ color: "white", textDecoration: "none" }}>Home</Link>
                    </li>
                    <li>
                        <Link to="/Recipes" style={{ color: "white", textDecoration: "none" }}>Recipes</Link>
                    </li>
                    <li>
                        <Link to="/FavoriteRecipes" style={{ color: "white", textDecoration: "none" }}>Favorite recipes</Link>
                    </li>
                    <li>
                        <Link to="/Profile" style={{ color: "white", textDecoration: "none" }}>Profile</Link>
                    </li>
                </ul> : <ul>
                    <li>
                        <Link to="/Home" style={{ color: "white", textDecoration: "none" }}>Home</Link>
                    </li>
                    <li>
                        <Link to="/Recipes" style={{ color: "white", textDecoration: "none" }}>Recipes</Link>
                    </li>
                    <li>
                        <Link to="/Login" style={{ color: "white", textDecoration: "none" }}>Login</Link>
                    </li>
                </ul>}
        </div>
    )
}
