.class public final Lcom/google/android/gms/internal/vision/x;
.super Lcom/google/android/gms/internal/vision/N0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/x$a;
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/vision/x;

.field private static volatile zzj:Lcom/google/android/gms/internal/vision/E1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/E1;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/vision/n;

.field private zze:Lcom/google/android/gms/internal/vision/t;

.field private zzf:Lcom/google/android/gms/internal/vision/r;

.field private zzg:I

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/x;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/x;->zzi:Lcom/google/android/gms/internal/vision/x;

    const-class v1, Lcom/google/android/gms/internal/vision/x;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/N0;->q(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/N0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/N0;-><init>()V

    return-void
.end method

.method public static w()Lcom/google/android/gms/internal/vision/x$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/x;->zzi:Lcom/google/android/gms/internal/vision/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/N0;->s()Lcom/google/android/gms/internal/vision/N0$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/x$a;

    return-object v0
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/vision/x;Lcom/google/android/gms/internal/vision/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/x;->x(Lcom/google/android/gms/internal/vision/r;)V

    return-void
.end method

.method public static synthetic z()Lcom/google/android/gms/internal/vision/x;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/x;->zzi:Lcom/google/android/gms/internal/vision/x;

    return-object v0
.end method


# virtual methods
.method public final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p2, Lcom/google/android/gms/internal/vision/z;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/x;->zzj:Lcom/google/android/gms/internal/vision/E1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/vision/x;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/x;->zzj:Lcom/google/android/gms/internal/vision/E1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/vision/N0$a;

    sget-object p3, Lcom/google/android/gms/internal/vision/x;->zzi:Lcom/google/android/gms/internal/vision/x;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/N0$a;-><init>(Lcom/google/android/gms/internal/vision/N0;)V

    sput-object p1, Lcom/google/android/gms/internal/vision/x;->zzj:Lcom/google/android/gms/internal/vision/E1;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/x;->zzi:Lcom/google/android/gms/internal/vision/x;

    return-object p1

    :pswitch_4
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1004\u0003\u0005\u1007\u0004"

    sget-object p3, Lcom/google/android/gms/internal/vision/x;->zzi:Lcom/google/android/gms/internal/vision/x;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/N0;->o(Lcom/google/android/gms/internal/vision/t1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/x$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/x$a;-><init>(Lcom/google/android/gms/internal/vision/z;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/x;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/x;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Lcom/google/android/gms/internal/vision/r;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/x;->zzf:Lcom/google/android/gms/internal/vision/r;

    iget p1, p0, Lcom/google/android/gms/internal/vision/x;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/x;->zzc:I

    return-void
.end method
