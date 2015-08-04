# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_Z00A,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/asus/Z00A/full_Z00A.mk)


## Device identifier. This must come after all inclusions
PRODUCT_NAME := pa_Z00A
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00A
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00A

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z00A \
    BUILD_FINGERPRINT=asus/WW_Z00A/Z00A:5.0/LRX21V/2.19.40.22_20150627_5104_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_fhd-user 5.0 LRX21V 2.19.40.22_20150627_5104_user release-keys"

endif