"""
Automate installation of github packages.  Recomended usage inside the pipelines:

	try:
		import module
	except:
		repo_dir = clone_repo_github.main()
		sys.path.append(repo_dir)
		import module

Be careful, it could be that the package is in another dir (so you might duplicate it)		
"""
from os.path import join
from git import Repo
import sys

### Paths: ###
from pathlib import Path
home_dir = str(Path.home())  # package_path = str(Path(cwd).parent)
##############

### loger: ###
import logging
logger = logging.getLogger(__name__)
logging.basicConfig(
    format = "%(levelname) -7s %(asctime)s  %(module)s Line %(lineno)s %(message)s",
    level = logging.INFO,
    handlers=[logging.StreamHandler(sys.stdout)])  # logger.info('-- logger info example --')
##############

username = '*****'
github_token = '*****'  # token or password


def main(repository_name, clone_dir=home_dir, username=username, password=github_token):
	"""
	# github_root_url = 'https://github.com/ClearImageAI'  -->  if no password is required
	# https://username:password@github.com/username/repository.git
	# https://username:token@github.com/group_or_username/repository.git	
	"""
	logger.info(f"   ***  Cloning repo '{repository_name}' ...  ***")
	github_root_url = f"https://{username}:{password+'@'}github.com/ClearImageAI"
	git_url = join(github_root_url, repository_name + ".git")
	repo_dir = join(clone_dir, repository_name)
	Repo.clone_from(git_url, repo_dir)
	print(" ... done")
	return repo_dir


if __name__ == '__main__':
	repository_name = 'manual_labeling'
	repo_dir = main(repository_name)
