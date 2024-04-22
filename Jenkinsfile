pipeline{

agent{
    label 'ansiblenode'
}

environment{
    AWS_EC=credentials('AWSEC2PEM')
}

stages{
    stage('CheckOutCode'){
        steps{
            git credentialsId: '5bea97a5-1d05-46ad-bfc8-6e055e1d9ef8', url: 'https://github.com/Zainulla75117/Ansible-Project-1.git'
        }
    }
    stage('RunTerraform'){
        steps{
            sh "terraform  -chdir=terraformscript/aws_ec2.tf init"
            sh "terraform  -chdir=terraformscript/aws_ec2.tf apply --auto-approve"
        }
    }
    stage('ExeAnsiblePlaybooks'){
        steps{
            sh "ansible-playbook -i Inventory/aws_ec2.yaml --private-key=$AWSEC2PEM Playbooks/pingServer.yaml --ssh-common-args='-o StrictHostKeyChecking=no'"
        }
    }
}//stages End
}//pipeline End