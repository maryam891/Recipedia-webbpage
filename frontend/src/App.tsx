
import NavBar from "./components/NavBar"
import Footer from "./components/Footer"
import { createHashRouter, Outlet, RouterProvider } from "react-router-dom"
import Recipes from "./components/Recipes"
import Home from "./components/Home"
import { FavContextProvider } from "./FavoriteContext"

import FavoriteRecipes from "./components/FavoriteRecipes"


const router = createHashRouter([
  {
    element: (
      <FavContextProvider>
        <NavBar />
        <Outlet />
        <Footer />
      </FavContextProvider>
    ),
    children: [
      { element: <Home />, index: true },
      { element: <Recipes />, path: "Recipes" },
      { element: <FavoriteRecipes />, path: "FavoriteRecipes" },
      { element: <Home />, path: "Home" },
    ]
  }
])

function App() {
  return <RouterProvider router={router} />
}
export default App
