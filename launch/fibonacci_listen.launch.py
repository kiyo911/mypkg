import launch
import launch.actions
import launch.substitutions
import launch_ros.actions


def generate_launch_description():

    fibonacci = launch_ros.actions.Node(
        package='mypkg',
        executable='fibonacci',
        )
    listener = launch_ros.actions.Node(
        package='mypkg',
        executable='listener',
        output='screen'
        )

    return launch.LaunchDescription([fibonacci, listener])
