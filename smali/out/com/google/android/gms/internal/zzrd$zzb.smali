.class Lcom/google/android/gms/internal/zzrd$zzb;
.super Lcom/google/android/gms/internal/zzrj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private Av:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzrd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrj$zza;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd$zzb;->Av:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzarr()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd$zzb;->Av:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrd;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzrd;->zza(Lcom/google/android/gms/internal/zzrd;)V

    goto :goto_a
.end method
