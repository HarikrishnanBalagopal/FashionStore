package com.fashion.dao;

import java.util.List;

import com.fashion.model.CardDetails;

public interface CardDetailsDAO
{
	public List<CardDetails> list(int sortOrder);

	public CardDetails get(int id);

	public boolean save(CardDetails cardDetails);

	public boolean update(CardDetails cardDetails);

	public boolean delete(int id);
}