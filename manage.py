from flask.ext.script import Manager
from run import app


manager = Manager(app)


@manager.shell
def make_shell_context():
    return dict(app=app)


if __name__ == "__main__":
        manager.run()
