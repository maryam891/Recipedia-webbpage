import { Link, } from 'react-router-dom'
import "../css/Footer.css"
export default function Footer() {
    return (
        <div className='footer-container'>
            <h1 style={{ color: "white", paddingLeft: "10px" }}>Recipedia</h1>
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
            </ul>
        </div>
    )
}
