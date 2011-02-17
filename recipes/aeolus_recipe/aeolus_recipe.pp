#--
#  Copyright (C) 2010 Red Hat Inc.
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2.1 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA
#
# Author: Mohammed Morsi <mmorsi@redhat.com>
#--

#
# aeolus installation recipe
#

# Modules used by the recipe
import "aeolus_recipe/aeolus"

# include the various aeolus components
include aeolus::conductor
include aeolus::deltacloud
include aeolus::image-factory
include aeolus::iwhd

aeolus::create_bucket{"aeolus":}

aeolus::site_admin{"admin":
     email           => 'dcuser@aeolusproject.org',
     password        => 'password',
     first_name      => 'aeolus',
     last_name       => 'user'}