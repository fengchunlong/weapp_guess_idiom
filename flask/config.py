import os
class Config:
    SECRET_KEY = 'mrsoft'
    SQLALCHEMY_TRACK_MODIFICATIONS = True

    # 小程序配置信息
    AppID = 'wx2afe5d2ac9093471'
    AppSecret = '6052b68b758efaa58a57d9b02e62c0ce'

    @staticmethod
    def init_app(app):
        '''初始化配置文件'''
        pass

# the config for development
class DevelopmentConfig(Config):
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:root@127.0.0.1:3306/idiom'
    DEBUG = True

# define the config
config = {
    'default': DevelopmentConfig
}
