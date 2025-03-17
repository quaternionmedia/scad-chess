module pawn(scale=1,segments=64) {
    scale(scale/20)
        rotate_extrude(convexity = 10, $fn = segments)
            import(file = "profiles/pawn_profile.svg");
}

pawn();
