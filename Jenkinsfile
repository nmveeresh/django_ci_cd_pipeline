pipline
{
    agent any
    stages 
    {
        stage('Setup Python Virtual ENV')
        {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''
        }

        stage('Setup Gunicorn Setup')
        {
            sh '''
            chmod +x gunicorn.sh
            ./gunicorn.sh
            '''
        }

        stage('Setup NGNIX Setup')
        {
            sh '''
            chmod +x ngnix.sh
            ./ngnix.sh
            '''
        }
    }
}
