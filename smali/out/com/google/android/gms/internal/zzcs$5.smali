.class Lcom/google/android/gms/internal/zzcs$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaui:Lcom/google/android/gms/internal/zzcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcs$5;->zzaui:Lcom/google/android/gms/internal/zzcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs$5;->zzaui:Lcom/google/android/gms/internal/zzcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzcs;)Lcom/google/android/gms/internal/zzcp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcp;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs$5;->zzaui:Lcom/google/android/gms/internal/zzcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzcs;)Lcom/google/android/gms/internal/zzcp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcp;->zzb(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V

    goto :goto_c
.end method
