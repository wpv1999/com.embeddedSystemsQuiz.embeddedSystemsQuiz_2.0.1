.class Lcom/google/android/gms/internal/zzfx$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfx$1;->onAdOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbrs:Lcom/google/android/gms/internal/zzfx$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfx$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfx$1$5;->zzbrs:Lcom/google/android/gms/internal/zzfx$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfy;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfy;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdOpened()V

    :cond_9
    return-void
.end method
