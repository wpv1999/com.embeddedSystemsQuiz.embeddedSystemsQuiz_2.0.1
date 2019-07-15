.class public final Lcom/google/android/gms/internal/zzjl;
.super Lcom/google/android/gms/ads/internal/request/zzk$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field private static final zzaox:Ljava/lang/Object;

.field private static zzcnk:Lcom/google/android/gms/internal/zzjl;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcnl:Lcom/google/android/gms/internal/zzjk;

.field private final zzcnm:Lcom/google/android/gms/internal/zzdk;

.field private final zzcnn:Lcom/google/android/gms/internal/zzgh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjl;->zzaox:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzjk;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/request/zzk$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjl;->zzcnl:Lcom/google/android/gms/internal/zzjk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjl;->zzcnm:Lcom/google/android/gms/internal/zzdk;

    new-instance v0, Lcom/google/android/gms/internal/zzgh;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzwr()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdk;->zzlo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzjl$4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzjl$4;-><init>(Lcom/google/android/gms/internal/zzjl;)V

    new-instance v5, Lcom/google/android/gms/internal/zzgh$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzgh$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjl;->zzcnn:Lcom/google/android/gms/internal/zzgh;

    return-void

    :cond_2d
    move-object v1, p1

    goto :goto_15
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzjk;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 25

    const-string v4, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdr;->initialize(Landroid/content/Context;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcni:Lcom/google/android/gms/internal/zzib;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzib;->zzrl()Lcom/google/android/gms/internal/zzlt;

    move-result-object v11

    new-instance v7, Lcom/google/android/gms/internal/zzdz;

    sget-object v4, Lcom/google/android/gms/internal/zzdr;->zzbeq:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "load_ad"

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/gms/internal/zzdz;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_4e

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzckl:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4e

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzckl:J

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zzdz;->zzc(J)Lcom/google/android/gms/internal/zzdx;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "cts"

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    :cond_4e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdz;->zzlz()Lcom/google/android/gms/internal/zzdx;

    move-result-object v16

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_311

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzckb:Landroid/os/Bundle;

    if-eqz v5, :cond_311

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzckb:Landroid/os/Bundle;

    move-object v5, v4

    :goto_65
    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzdr;->zzbfh:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_30d

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcna:Lcom/google/android/gms/internal/zzjp;

    if-eqz v4, :cond_30d

    if-nez v5, :cond_94

    sget-object v4, Lcom/google/android/gms/internal/zzdr;->zzbfi:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_94

    const-string v4, "contentInfo is not present, but we\'ll still launch the app index task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_94
    if-eqz v5, :cond_309

    new-instance v4, Lcom/google/android/gms/internal/zzjl$1;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/google/android/gms/internal/zzjl$1;-><init>(Lcom/google/android/gms/internal/zzjk;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v4

    move-object v8, v5

    move-object v5, v4

    :goto_a7
    new-instance v6, Lcom/google/android/gms/internal/zzlr;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_ee

    const-string v9, "_ad"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ee

    const/4 v4, 0x1

    :goto_be
    move-object/from16 v0, p4

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcks:Z

    if-eqz v9, :cond_306

    if-nez v4, :cond_306

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcnf:Lcom/google/android/gms/internal/zzgm;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/zzgm;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v4

    move-object v9, v4

    :goto_d3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgv()Lcom/google/android/gms/internal/zzjs;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzjs;->zzv(Landroid/content/Context;)Lcom/google/android/gms/internal/zzjr;

    move-result-object v12

    iget v4, v12, Lcom/google/android/gms/internal/zzjr;->zzcqe:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_f0

    const-string v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_ed
    return-object v4

    :cond_ee
    const/4 v4, 0x0

    goto :goto_be

    :cond_f0
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x7

    if-lt v4, v6, :cond_126

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcki:Ljava/lang/String;

    move-object v10, v4

    :goto_fc
    new-instance v6, Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v10, v4}, Lcom/google/android/gms/internal/zzjn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_130

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v13, "_ad"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_130

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    goto :goto_ed

    :cond_126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_fc

    :cond_130
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcnd:Lcom/google/android/gms/internal/zzdm;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzdm;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcnj:Lcom/google/android/gms/internal/zzkn;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzkn;->zzg(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcnh:Lcom/google/android/gms/internal/zzjv;

    if-eqz v5, :cond_167

    :try_start_14a
    const-string v4, "Waiting for app index fetching task."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/zzdr;->zzbfj:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v4, "App index fetching task completed."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14a .. :try_end_167} :catch_303
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_167} :catch_1c7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14a .. :try_end_167} :catch_1ce

    :cond_167
    :goto_167
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjk;->zzcnc:Lcom/google/android/gms/internal/zzkk;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcjv:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzjl;->zzd(Lcom/google/android/gms/internal/zzlt;)Landroid/os/Bundle;

    new-instance v4, Lcom/google/android/gms/internal/zzjj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzjj;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzjj;->zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/zzjj;->zza(Lcom/google/android/gms/internal/zzjr;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzjj;->zza(Lcom/google/android/gms/internal/zzjv$zza;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    invoke-static {v9}, Lcom/google/android/gms/internal/zzjl;->zzc(Lcom/google/android/gms/internal/zzlt;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzjj;->zzc(Landroid/location/Location;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    invoke-static {v11}, Lcom/google/android/gms/internal/zzjl;->zzd(Lcom/google/android/gms/internal/zzlt;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzjj;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/zzjj;->zzcm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/zzjj;->zzk(Ljava/util/List;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/zzjj;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzjj;->zzcn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/zzjk;->zzcnb:Lcom/google/android/gms/ads/internal/cache/zze;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/google/android/gms/ads/internal/cache/zze;->zzi(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzjj;->zzi(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjj;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1d5

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_ed

    :catch_1c7
    move-exception v4

    :goto_1c8
    const-string v5, "Failed to fetch app index signal"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_167

    :catch_1ce
    move-exception v4

    const-string v4, "Timed out waiting for app index fetching task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    goto :goto_167

    :cond_1d5
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v8, 0x7

    if-ge v4, v8, :cond_1e1

    :try_start_1dc
    const-string v4, "request_id"

    invoke-virtual {v5, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e1
    .catch Lorg/json/JSONException; {:try_start_1dc .. :try_end_1e1} :catch_300

    :cond_1e1
    :goto_1e1
    :try_start_1e1
    const-string v4, "prefetch_mode"

    const-string v8, "url"

    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e8
    .catch Lorg/json/JSONException; {:try_start_1e1 .. :try_end_1e8} :catch_231

    :goto_1e8
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "arc"

    aput-object v8, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdz;->zzlz()Lcom/google/android/gms/internal/zzdx;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzjl$2;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzjl$2;-><init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_209
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzjn;->zztk()Ljava/util/concurrent/Future;

    move-result-object v4

    const-wide/16 v8, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzjq;
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_217} :catch_238
    .catchall {:try_start_209 .. :try_end_217} :catchall_2ee

    if-nez v13, :cond_251

    :try_start_219
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_21f
    .catchall {:try_start_219 .. :try_end_21f} :catchall_2ee

    sget-object v5, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjl$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjl$3;-><init>(Lcom/google/android/gms/internal/zzjk;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ed

    :catch_231
    move-exception v4

    const-string v8, "Failed putting prefetch parameters to ad request."

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e8

    :catch_238
    move-exception v4

    :try_start_239
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_23f
    .catchall {:try_start_239 .. :try_end_23f} :catchall_2ee

    sget-object v5, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjl$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjl$3;-><init>(Lcom/google/android/gms/internal/zzjk;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ed

    :cond_251
    :try_start_251
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjq;->getErrorCode()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_273

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjq;->getErrorCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_261
    .catchall {:try_start_251 .. :try_end_261} :catchall_2ee

    sget-object v5, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjl$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjl$3;-><init>(Lcom/google/android/gms/internal/zzjk;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ed

    :cond_273
    :try_start_273
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdz;->zzmd()Lcom/google/android/gms/internal/zzdx;

    move-result-object v4

    if-eqz v4, :cond_288

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdz;->zzmd()Lcom/google/android/gms/internal/zzdx;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "rur"

    aput-object v9, v5, v8

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    :cond_288
    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjq;->zztq()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29f

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjq;->zztq()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_29f
    if-nez v4, :cond_2c1

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjq;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c1

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v10, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjq;->getUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, p4

    move-object/from16 v9, p0

    move-object v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/zzjl;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzjk;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_2c1
    if-nez v4, :cond_2c9

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_2c9
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "tts"

    aput-object v9, v5, v8

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdz;->zzmb()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclo:Ljava/lang/String;
    :try_end_2dc
    .catchall {:try_start_273 .. :try_end_2dc} :catchall_2ee

    sget-object v5, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjl$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjl$3;-><init>(Lcom/google/android/gms/internal/zzjk;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ed

    :catchall_2ee
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjl$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjl$3;-><init>(Lcom/google/android/gms/internal/zzjk;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4

    :catch_300
    move-exception v4

    goto/16 :goto_1e1

    :catch_303
    move-exception v4

    goto/16 :goto_1c8

    :cond_306
    move-object v9, v6

    goto/16 :goto_d3

    :cond_309
    move-object v8, v5

    move-object v5, v6

    goto/16 :goto_a7

    :cond_30d
    move-object v8, v5

    move-object v5, v6

    goto/16 :goto_a7

    :cond_311
    move-object v5, v4

    goto/16 :goto_65
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzjk;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 21

    if-eqz p6, :cond_ed

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zzdz;->zzlz()Lcom/google/android/gms/internal/zzdx;

    move-result-object v2

    move-object v3, v2

    :goto_7
    :try_start_7
    new-instance v8, Lcom/google/android/gms/internal/zzjo;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjq;->zztn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/internal/zzjo;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)V

    const-string v4, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_20
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v10

    move v6, v2

    move-object v7, v4

    :goto_35
    if-eqz p7, :cond_3e

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zzts()V

    :cond_3e
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_44} :catch_f8

    :try_start_44
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5, v2}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjq;->zztp()Z

    move-result v4

    if-eqz v4, :cond_5f

    const-string v4, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzckt:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    const-string v5, "Sending webview cookie in ad request header."

    invoke-static {v5}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    const-string v5, "Cookie"

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    if-eqz p5, :cond_9d

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjq;->zzto()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9d

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjq;->zzto()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v4, v9

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_8d
    .catchall {:try_start_44 .. :try_end_8d} :catchall_11d

    const/4 v5, 0x0

    :try_start_8e
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_117

    :try_start_97
    invoke-virtual {v4, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_1d4

    :try_start_9a
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :cond_9d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    const/16 v4, 0xc8

    if-lt v9, v4, :cond_131

    const/16 v4, 0x12c

    if-ge v9, v4, :cond_131

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_11d

    move-result-object v6

    const/4 v5, 0x0

    :try_start_b2
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_12b

    :try_start_bb
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzlb;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_1d1

    move-result-object v5

    :try_start_c3
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {v6, v12, v5, v9}, Lcom/google/android/gms/internal/zzjl;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v8, v6, v12, v5}, Lcom/google/android/gms/internal/zzjo;->zzb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p6, :cond_db

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ufe"

    aput-object v6, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzdz;->zza(Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    :cond_db
    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/zzjo;->zzj(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_de
    .catchall {:try_start_c3 .. :try_end_de} :catchall_11d

    move-result-object v3

    :try_start_df
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_eb

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zztt()V

    :cond_eb
    move-object v2, v3

    :goto_ec
    return-object v2

    :cond_ed
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_7

    :cond_f1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_f6} :catch_f8

    goto/16 :goto_20

    :catch_f8
    move-exception v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1ca

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_10d
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_ec

    :catchall_117
    move-exception v3

    move-object v4, v5

    :goto_119
    :try_start_119
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v3
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_11d

    :catchall_11d
    move-exception v3

    :try_start_11e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_12a

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zztt()V

    :cond_12a
    throw v3
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_12b} :catch_f8

    :catchall_12b
    move-exception v3

    move-object v4, v5

    :goto_12d
    :try_start_12d
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v3

    :cond_131
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v12, v5, v9}, Lcom/google/android/gms/internal/zzjl;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v4, 0x12c

    if-lt v9, v4, :cond_18a

    const/16 v4, 0x190

    if-ge v9, v4, :cond_18a

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_166

    const-string v3, "No location header to follow redirect."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_158
    .catchall {:try_start_12d .. :try_end_158} :catchall_11d

    :try_start_158
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_164

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zztt()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_164} :catch_f8

    :cond_164
    move-object v2, v3

    goto :goto_ec

    :cond_166
    :try_start_166
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v6, 0x1

    const/4 v6, 0x5

    if-le v4, v6, :cond_1b7

    const-string v3, "Too many redirects."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_17b
    .catchall {:try_start_166 .. :try_end_17b} :catchall_11d

    :try_start_17b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_187

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zztt()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_187} :catch_f8

    :cond_187
    move-object v2, v3

    goto/16 :goto_ec

    :cond_18a
    :try_start_18a
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_1a8
    .catchall {:try_start_18a .. :try_end_1a8} :catchall_11d

    :try_start_1a8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_1b4

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zztt()V
    :try_end_1b4
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1b4} :catch_f8

    :cond_1b4
    move-object v2, v3

    goto/16 :goto_ec

    :cond_1b7
    :try_start_1b7
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzjo;->zzk(Ljava/util/Map;)V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_11d

    :try_start_1ba
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_1c6

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjk;->zzcng:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzju;->zztt()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1c6} :catch_f8

    :cond_1c6
    move v6, v4

    move-object v7, v5

    goto/16 :goto_35

    :cond_1ca
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_10d

    :catchall_1d1
    move-exception v3

    goto/16 :goto_12d

    :catchall_1d4
    move-exception v3

    goto/16 :goto_119
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzjk;)Lcom/google/android/gms/internal/zzjl;
    .registers 6

    sget-object v1, Lcom/google/android/gms/internal/zzjl;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzjl;->zzcnk:Lcom/google/android/gms/internal/zzjl;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/zzjl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_13
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzjl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzjk;)V

    sput-object v0, Lcom/google/android/gms/internal/zzjl;->zzcnk:Lcom/google/android/gms/internal/zzjl;

    :cond_18
    sget-object v0, Lcom/google/android/gms/internal/zzjl;->zzcnk:Lcom/google/android/gms/internal/zzjl;

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_e5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_99

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_93

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8f
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    goto :goto_73

    :cond_93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    :cond_99
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_c2

    const/4 v0, 0x0

    :goto_a1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_c7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_a1

    :cond_c2
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :cond_e5
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzlt;)Landroid/location/Location;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbjr:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzlt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "Exception caught while getting location"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzlt;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkj:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v0}, Lcom/google/android/gms/internal/zzlt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    const-string v2, "Exception caught while getting parental controls."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_19
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjl;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkr;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    new-instance v0, Lcom/google/android/gms/internal/zzjl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzjl$5;-><init>(Lcom/google/android/gms/internal/zzjl;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlt;

    return-void
.end method

.method public zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjl;->zzcnn:Lcom/google/android/gms/internal/zzgh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjl;->zzcnm:Lcom/google/android/gms/internal/zzdk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjl;->zzcnl:Lcom/google/android/gms/internal/zzjk;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzjl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzjk;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    return-object v0
.end method
