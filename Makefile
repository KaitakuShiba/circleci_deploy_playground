run:
	docker run --env-file $(CURDIR)/.env --rm -v ${CURDIR}:/work -w /work -e AWS_ACCESS_KEY_ID=${TERRA_AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${TERRA_AWS_SECRET_ACCESS_KEY} -e AWS_DEFAULT_REGION=${AWS_REGION} hashicorp/terraform:0.14.3 ${ARG} ${ARG2}
