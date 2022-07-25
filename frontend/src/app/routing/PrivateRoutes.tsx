import { lazy, FC, Suspense } from 'react'
import { Route, Routes, Navigate } from 'react-router-dom'
import { MasterLayout } from '../../_metronic/layout/MasterLayout'
import TopBarProgress from 'react-topbar-progress-indicator'
import { DashboardWrapper } from '../pages/dashboard/DashboardWrapper'
import { getCSSVariableValue } from '../../_metronic/assets/ts/_utils'
import { WithChildren } from '../../_metronic/helpers'
import { QueryExecuteWrapper } from '../pages/query/QueryExecuteWrapper'
import { QueryHistoryWrapper } from '../pages/query/QueryHistoryWrapper'
import { UserManagementWrapper } from '../pages/user-management/UserManagementWrapper'
import { DevelopAxiosWrapper } from '../pages/develop/DevelopAxiosWrapper'
import { DevelopButtonWrapper } from '../pages/develop/DevelopButtonWrapper'
import { DevelopReactStateWrapper } from '../pages/develop/DevelopReactStateWrapper'
import { DevelopReduxStateWrapper } from '../pages/develop/DevelopReduxStateWrapper'
import { AccountSettingsWrapper } from '../pages/account-settings/AccountSettingsWrapper'

/*
  react-route-dom v6
  https://reactrouter.com/docs/en/v6/getting-started/overview

  example
  dashboard  (x)
  dashboard/ (o)
*/
const PrivateRoutes = () => {
  const ProfilePage = lazy(() => import('../modules/profile/ProfilePage'))

  return (
    <Routes>
      <Route element={<MasterLayout />}>
        {/* Redirect to Dashboard after success login/registartion */}
        <Route path="auth/*" element={<Navigate to="/dashboard" />} />

        {/* Pages - Account Settings */}
        <Route path="/account/settings/" element={<AccountSettingsWrapper />} />

        {/* Pages - Dashboard */}
        <Route path="/dashboard/" element={<DashboardWrapper />} />

        {/* Pages - Develop */}
        <Route path="/develop/axios/" element={<DevelopAxiosWrapper />} />
        <Route path="/develop/button/" element={<DevelopButtonWrapper />} />
        <Route
          path="/develop/reactState/"
          element={<DevelopReactStateWrapper />}
        />
        <Route
          path="/develop/reduxState/"
          element={<DevelopReduxStateWrapper />}
        />

        {/* Pages - User */}
        <Route path="/user/management/" element={<UserManagementWrapper />} />

        {/* Pages - Query */}
        <Route path="/query/execute/" element={<QueryExecuteWrapper />} />
        <Route path="/query/history/" element={<QueryHistoryWrapper />} />

        {/* Lazy Modules */}
        <Route
          path="crafted/pages/profile/*"
          element={
            <SuspensedView>
              <ProfilePage />
            </SuspensedView>
          }
        />

        {/* Page Not Found */}
        <Route path="*" element={<Navigate to="/error/404" />} />
      </Route>
    </Routes>
  )
}

const SuspensedView: FC<WithChildren> = ({ children }) => {
  const baseColor = getCSSVariableValue('--kt-primary')
  TopBarProgress.config({
    barColors: {
      '0': baseColor
    },
    barThickness: 1,
    shadowBlur: 5
  })
  return <Suspense fallback={<TopBarProgress />}>{children}</Suspense>
}

export { PrivateRoutes }
