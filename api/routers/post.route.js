import express from "express";
import { getAllDataUser } from "../controllers/post.controller.js";

const router = express.Router();

router.get("/test", getAllDataUser);

export default router;
