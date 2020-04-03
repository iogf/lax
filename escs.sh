##############################################################################
# Clone lax repository.

cd ~/projects
git clone git@github.com:iogf/lax.git lax-code

# Push lax.
cd ~/projects/lax-code
git status
git add *
git commit -a 
git push
##############################################################################
# Install lax.
cd ~/projects/lax-code
sudo bash -i
python setup.py install
rm -fr build
exit
##############################################################################
# Create, development, branch, lax.
cd /home/tau/projects/lax-code/
git branch -a
git checkout -b development
git push --set-upstream origin development
##############################################################################
# Merge development into master.
cd /home/tau/projects/lax-code/
git checkout master
git merge development
git push
git checkout development
##############################################################################

cd ~/projects/lax-code
python setup.py sdist register upload
rm -fr dist

