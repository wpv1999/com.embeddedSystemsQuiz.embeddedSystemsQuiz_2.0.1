.class Lcom/google/android/gms/internal/zzjl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzjk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlg",
        "<",
        "Lcom/google/android/gms/internal/zzge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcnw:Lcom/google/android/gms/internal/zzjl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjl$4;->zzcnw:Lcom/google/android/gms/internal/zzjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzge;)V
    .registers 4

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzfd;->zzbpr:Lcom/google/android/gms/internal/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzge;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzge;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjl$4;->zza(Lcom/google/android/gms/internal/zzge;)V

    return-void
.end method
