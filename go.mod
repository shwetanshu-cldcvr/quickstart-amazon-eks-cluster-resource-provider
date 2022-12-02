module github.com/aws-quickstart/quickstart-amazon-eks-cluster-resource-provider

go 1.17

require (
	github.com/aws-cloudformation/cloudformation-cli-go-plugin v1.0.3
	github.com/aws/aws-lambda-go v1.15.0
	github.com/aws/aws-sdk-go v1.43.28
	github.com/jinzhu/copier v0.0.0-20190924061706-b57f9002281a
	k8s.io/api v0.22.1
	k8s.io/apimachinery v0.22.1
	k8s.io/client-go v0.25.4
	sigs.k8s.io/aws-iam-authenticator v0.5.3
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gofrs/flock v0.7.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.3.2 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/googleapis/gnostic v0.3.1 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/json-iterator/go v1.1.7 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.1 // indirect
	github.com/kr/pretty v0.2.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/segmentio/ksuid v1.0.2 // indirect
	github.com/sirupsen/logrus v1.4.2 // indirect
	github.com/stretchr/testify v1.5.1 // indirect
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9 // indirect
	golang.org/x/net v0.0.0-20220127200216-cd36cc0744dd // indirect
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d // indirect
	golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4 // indirect
	google.golang.org/appengine v1.6.5 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/validator.v2 v2.0.0-20191107172027-c3144fdedc21 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/utils v0.0.0-20200324210504-a9aa75ae1b89 // indirect
	sigs.k8s.io/yaml v1.1.0 // indirect
)

replace (
	k8s.io/api => k8s.io/api v0.15.11
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.15.11
	k8s.io/apimachinery => k8s.io/apimachinery v0.15.11
	k8s.io/apiserver => k8s.io/apiserver v0.15.11
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.15.11
	k8s.io/client-go => k8s.io/client-go v0.15.11
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.15.11
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.15.11
	k8s.io/code-generator => k8s.io/code-generator v0.15.11
	k8s.io/component-base => k8s.io/component-base v0.15.11
	k8s.io/cri-api => k8s.io/cri-api v0.15.11
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.15.11
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.15.11
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.15.11
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.15.11
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.15.11
	k8s.io/kubectl => k8s.io/kubectl v0.15.11
	k8s.io/kubelet => k8s.io/kubelet v0.15.11
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.15.11
	k8s.io/metrics => k8s.io/metrics v0.15.11
	k8s.io/node-api => k8s.io/node-api v0.15.11
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.15.11
	k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.15.11
	k8s.io/sample-controller => k8s.io/sample-controller v0.15.11
)
