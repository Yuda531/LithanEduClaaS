package com.lithan.A1m8.service;

import java.util.Map;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lithan.A1m8.model.Message;

@Service
public class MessageSender {
	private static final String HOOKS_URL = "https://hooks.slack.com/services/%s";
	private static final Map<String, String> USER_TO_CHANNEL_WEBHOOK = Map.of("AgungWorkspace",
			"T0596DX9PC7/B0596EW605V/pIg09HzsUxdFPivtwcFIvjLq");

	public void sendMessage(String userName, Message message) throws JsonProcessingException {
		String userChannelId = USER_TO_CHANNEL_WEBHOOK.get(userName);
		String userWebhookUrl = String.format(HOOKS_URL, userChannelId);
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		ObjectMapper objectMapper = new ObjectMapper();
		String messageJson = objectMapper.writeValueAsString(message);
		HttpEntity<String> entity = new HttpEntity<>(messageJson, headers);
		System.out.println(userWebhookUrl);
		restTemplate.exchange("https://hooks.slack.com/services/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", HttpMethod.POST, entity, String.class);
	}
}
