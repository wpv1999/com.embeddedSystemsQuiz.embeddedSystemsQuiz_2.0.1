.class public Lcom/google/android/gms/internal/zzqd;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzqg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 13

    const/16 v3, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqf;Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzavg()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqg;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzqg;->zza(Lcom/google/android/gms/internal/zzqf;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method protected zzdm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqg;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqg$zza;->zzdo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqd;->zzdm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqg;

    move-result-object v0

    return-object v0
.end method

.method protected zzjx()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method

.method protected zzjy()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method