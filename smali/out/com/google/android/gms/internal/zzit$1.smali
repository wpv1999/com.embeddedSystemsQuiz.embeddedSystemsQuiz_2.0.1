.class Lcom/google/android/gms/internal/zzit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zzfp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcgv:Lcom/google/android/gms/internal/zzit;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzit;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$1;->zzcgv:Lcom/google/android/gms/internal/zzit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$1;->zzcgv:Lcom/google/android/gms/internal/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzit;->onStop()V

    return-void
.end method
