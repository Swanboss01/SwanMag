import { createAuth0Client } from "@auth0/auth0-spa-js";

async function initAuth0() {
  const auth0 = await createAuth0Client({
    domain: "dev-580fkbolt24woc4k.us.auth0.com",
    client_id: "sSownSBEaGwqVc3ekPlugNxnS21NfsW1",
  });

  document.getElementById("connexion").addEventListener("click", async () => {
    await auth0.loginWithRedirect();
  });
