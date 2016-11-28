##############################################################################
# clone lax repository.

cd ~/projects
git clone git@github.com:iogf/lax.git lax-code

# push lax.
cd ~/projects/lax-code
git status
git add *
git commit -a 
git push

# it installs lax.
cd ~/projects/lax-code
sudo bash -i
python setup.py install
rm -fr build
exit
##############################################################################
# create, development, branch, lax.
cd /home/tau/projects/lax-code/
git branch -a
git checkout -b development
git push --set-upstream origin development


