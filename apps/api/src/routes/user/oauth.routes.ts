import { Router } from "express";
import { oauthCallback } from "../../controllers/oauth.controller";

const router: Router = Router();

router.get("/callback", oauthCallback);

export default router;
