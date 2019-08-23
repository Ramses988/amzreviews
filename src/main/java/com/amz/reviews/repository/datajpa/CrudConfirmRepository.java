package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.ConfirmToken;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CrudConfirmRepository extends JpaRepository<ConfirmToken, Integer> {

    Optional<ConfirmToken> findByConfirmToken(String confirmToken);
}