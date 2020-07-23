version=latest
local_registry=192.168.0.100:5555
aliyun_registry_bestqa=registry.cn-shanghai.aliyuncs.com/bestqa
github_pkg_registry_surveyresearch=docker.pkg.github.com/swuecho/surveyresearch

build:
	docker build -t echowuhao/act_base -f Dockerfile .
	# docker push echowuhao/act_base

push_to_local:
	docker tag  echowuhao/act_base $(local_registry)/act_base:$(version)
	docker push  $(local_registry)/act_base:$(version)
push_to_remote:
	docker push echowuhao/act_base
	docker tag  echowuhao/act_base $(aliyun_registry_bestqa)/act_base:$(version)
	docker push $(aliyun_registry_bestqa)/act_base:$(version)
	docker tag  echowuhao/act_base $(github_pkg_registry_surveyresearch)/act_base:$(version)
