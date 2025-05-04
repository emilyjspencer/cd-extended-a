package com.example.microservices_deployment.recommendationservice;


import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RecommendationController {

    @GetMapping("/recommendations")
    public List<String> getRecommendations() {
        return List.of("camera", "bowl", "duvet");
    }
}
