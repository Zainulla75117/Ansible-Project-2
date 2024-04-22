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
    stage('ExeAnsiblePlaybooks'){
        steps{
            sh "ansible-playbook -i "
        }
    }
}//stages End
}//pipeline End