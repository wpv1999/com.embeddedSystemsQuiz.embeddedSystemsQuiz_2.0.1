.class Lcom/google/android/gms/internal/zzki$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzki;->zzfp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamz:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzcrz:Lcom/google/android/gms/internal/zzki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzki;Lcom/google/android/gms/internal/zzko;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzki$1;->zzcrz:Lcom/google/android/gms/internal/zzki;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzki$1;->zzamz:Lcom/google/android/gms/internal/zzko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki$1;->zzcrz:Lcom/google/android/gms/internal/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzki;->zza(Lcom/google/android/gms/internal/zzki;)Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki$1;->zzamz:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkb;->zzb(Lcom/google/android/gms/internal/zzko;)V

    return-void
.end method
