# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_Z008,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/asus/Z008/full_Z008.mk)


## Device identifier. This must come after all inclusions
PRODUCT_NAME := pa_Z008
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z008
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00A

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z008 \
    BUILD_FINGERPRINT=asus/WW_Z008/Z008:5.0/LRX21V/2.19.40.23_20150701_1487_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_hd-user 5.0 LRX21V 2.19.40.23_20150701_1487_user release-keys"

endif
