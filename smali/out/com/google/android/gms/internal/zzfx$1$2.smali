.class Lcom/google/android/gms/internal/zzfx$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfx$1;->onAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbrs:Lcom/google/android/gms/internal/zzfx$1;

.field final synthetic zzbrt:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfx$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfx$1$2;->zzbrs:Lcom/google/android/gms/internal/zzfx$1;

    iput p2, p0, Lcom/google/android/gms/internal/zzfx$1$2;->zzbrt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfy;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfy;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    iget v1, p0, Lcom/google/android/gms/internal/zzfx$1$2;->zzbrt:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V

    :cond_b
    return-void
.end method
