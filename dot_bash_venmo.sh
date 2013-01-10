# add this to it
export VGIT_USERNAME=delano

# vagrant related stuff
alias venmo_dash_server_slaves_vagrant="cd /ebs/appvenmo && export DJANGO_SETTINGS_MODULE=settings_reporting_slaves && /ebs/venmo-ve/bin/ipython -- /ebs/appvenmo/dashboard/main.py --port=7001"
alias venmo_slave_tunnels="/vagrant_data/venmo-data-science/util/create_slave_tunnels.sh $VENMO_DATA_SCIENCE_SERVER_USER"

# starting the shell from different places, all against the slaves, if production is needed do it manually!
alias venmo_shell_slaves_appvenmo="cd /ebs/appvenmo && export APPROOT=/ebs/appvenmo && export PYTHONPATH=/ebs/appvenmo:/ebs/venmo-data-science && export DJANGO_SETTINGS_MODULE=settings_reporting_slaves && ipython --pdb manage.py shell -- --settings=settings_reporting_slaves"
alias venmo_shell_slaves_current_dir="export APPROOT=./ && export PYTHONPATH=../venmo-data-science && export DJANGO_SETTINGS_MODULE=settings_reporting_slaves && ipython --pdb manage.py shell -- --settings=settings_reporting_slaves"

alias venmo_rebuild_tags="cd ~/working/venmo-devops && find . -name '*.py' | etags --output tags -"
