.class Lcom/google/android/gms/internal/zzja$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlw$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlw$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzgi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzchq:Lcom/google/android/gms/internal/zzja$zza;

.field final synthetic zzchr:Lcom/google/android/gms/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$1;->zzchr:Lcom/google/android/gms/internal/zzja;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja$1;->zzchq:Lcom/google/android/gms/internal/zzja$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzgi;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1;->zzchq:Lcom/google/android/gms/internal/zzja$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzja$zza;->zze(Lcom/google/android/gms/internal/zzgi;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzja$1;->zzb(Lcom/google/android/gms/internal/zzgi;)V

    return-void
.end method
