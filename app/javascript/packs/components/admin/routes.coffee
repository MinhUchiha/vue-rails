import Placeholder from "../placeholder.vue"
import Header      from "../header.vue"
import Footer      from "../footer.vue"
import Login       from "./login.vue"
import Influencers from "./influencers/routes"

export default [
  {
    path:       ""
    name:       "login"
    components: { default: Login, footer: Footer }
  },
  {
    path:       "/influencers",
    components: { default: Placeholder, header: Header, footer: Footer },
    children:   Influencers,
    meta:       { auth: "admin" }
  }
]