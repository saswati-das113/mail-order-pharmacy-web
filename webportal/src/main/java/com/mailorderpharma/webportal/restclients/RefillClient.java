package com.mailorderpharma.webportal.restclients;

import java.text.ParseException;
import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mailorderpharma.webportal.entity.RefillOrder;
import com.mailorderpharma.webportal.entity.RefillOrderSubscription;
import com.mailorderpharma.webportal.exceptions.DrugQuantityNotAvailable;
import com.mailorderpharma.webportal.exceptions.InvalidTokenException;

import feign.FeignException;

@FeignClient(name = "${refillservice.client.name}", url = "${refillservice.client.url}")
public interface RefillClient {

	@RequestMapping(path = "/requestAdhocRefill/{sub_id}/{pay_status}/{quantity}/{location}", method = RequestMethod.POST)
	public ResponseEntity<RefillOrder> requestAdhocRefill(@RequestHeader("Authorization") String token,
			@PathVariable("sub_id") long sub_id, @PathVariable("pay_status") Boolean pay_status,
			@PathVariable("quantity") int quantity, @PathVariable("location") String location)
			throws ParseException, FeignException, InvalidTokenException, DrugQuantityNotAvailable;

	@RequestMapping(path = "/getRefillDuesAsOfDate/{memberId}/{date}", method = RequestMethod.GET)
	public ResponseEntity<List<RefillOrderSubscription>> getRefillDuesAsOfDate(
			@RequestHeader("Authorization") String token, @PathVariable("memberId") String memberId,
			@PathVariable("date") int date) throws InvalidTokenException;

}
