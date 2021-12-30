package com.miniprojet.miniprojet.Configuration;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import lombok.Data;


@Configuration
@ConfigurationProperties(prefix = "com.minprojet")
@Data
public class CustomProperties {

    private String language;

}