package com.lithan.A1m8.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.lithan.A1m8.model.Message;
import com.lithan.A1m8.service.MessageSender;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class MessageController {
	private final MessageSender messageSender;

	public MessageController(MessageSender messageSender) {
		this.messageSender = messageSender;
	}

	@PostMapping(path = "/messages/{userName}", consumes = MediaType.APPLICATION_JSON_VALUE)
	public void sendMessage(@PathVariable String userName, @RequestBody Message message)
			throws JsonProcessingException {
		messageSender.sendMessage(userName, message);
	}

}
