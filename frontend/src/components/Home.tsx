import backgroundImg from "../assets/images/backgroundImg.jpg"
import "../css/Home.css"
import { useState } from 'react'
import { useEffect } from 'react'
import { useNavigate } from 'react-router-dom';

interface Home {
    name: string,
    rating: number,
    cuisine: string,
    id: number,
    image: string,
    recipe_image: string



}
export default function Home() {
    const navigate = useNavigate();
    const recipeNavigation = () => {

        navigate('/Recipes');
    }
    const [popularRecipes, setPopularRecipes] = useState<Home[]>([])

    useEffect(() => {
        fetch('http://localhost:8080/api/popular')
            .then((response) => response.json())
            .then((result) => {
                setPopularRecipes(result)
                console.log(result)
            })
    }, [])

    const image = backgroundImg
    console.log(popularRecipes)
    return (
        <>
            <div className="Home-container">
                <div className="home-text-btn-container">
                    <h2>We have different cuisines and variations</h2>
                    <h3>Explore our recipes and save your favorite recipes</h3>
                    <button onClick={recipeNavigation}>Recipes</button>
                </div>
                <img src={image}></img>
            </div>
            <div className="popular-Recipes-Container">
                <h2>Popular recipes this week</h2>
                <div className="popular-recipes">
                    {/* Shows popular recipes*/}
                    {popularRecipes &&
                        popularRecipes.map((popularRecipe, index) => (
                            <div key={index}>
                                <img src={popularRecipe.recipe_image} style={{ height: "300px", width: "300px", borderRadius: "10px" }}></img>
                                <div style={{ marginBottom: "10px", marginTop: "10px" }}>
                                    <p style={{ padding: "5px" }}>{popularRecipe.name}</p>
                                    <p style={{ padding: "5px" }}>Cuisine {popularRecipe.cuisine}</p>
                                    <p style={{ padding: "5px" }}>Rating {popularRecipe.rating}</p>
                                </div>

                            </div>
                        ))}
                </div>
            </div>

        </>
    )
}
