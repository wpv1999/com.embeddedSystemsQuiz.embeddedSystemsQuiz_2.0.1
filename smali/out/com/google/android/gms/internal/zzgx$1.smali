.class Lcom/google/android/gms/internal/zzgx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgx;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbxd:Lcom/google/android/gms/internal/zzgu;

.field final synthetic zzbxe:Lcom/google/android/gms/internal/zzgx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgx;Lcom/google/android/gms/internal/zzgu;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgx$1;->zzbxe:Lcom/google/android/gms/internal/zzgx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgx$1;->zzbxd:Lcom/google/android/gms/internal/zzgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgx$1;->zzbxd:Lcom/google/android/gms/internal/zzgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgu;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
