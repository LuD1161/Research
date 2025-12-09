.class public final Lcom/google/android/gms/internal/vision/o;
.super Lcom/google/android/gms/internal/vision/N0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/o$b;,
        Lcom/google/android/gms/internal/vision/o$a;
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/vision/o;

.field private static volatile zzm:Lcom/google/android/gms/internal/vision/E1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/E1;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/vision/X0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/X0;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/vision/X0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/X0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/o;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/o;->zzl:Lcom/google/android/gms/internal/vision/o;

    const-class v1, Lcom/google/android/gms/internal/vision/o;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/N0;->q(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/N0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/N0;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zze:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/vision/N0;->v()Lcom/google/android/gms/internal/vision/X0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/vision/o;->zzf:Lcom/google/android/gms/internal/vision/X0;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zzh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/vision/N0;->v()Lcom/google/android/gms/internal/vision/X0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zzk:Lcom/google/android/gms/internal/vision/X0;

    return-void
.end method

.method public static synthetic A(Lcom/google/android/gms/internal/vision/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/o;->C(Ljava/lang/String;)V

    return-void
.end method

.method private final C(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/vision/o;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/o;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/o;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D()Lcom/google/android/gms/internal/vision/o;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/o;->zzl:Lcom/google/android/gms/internal/vision/o;

    return-object v0
.end method

.method public static synthetic F(Lcom/google/android/gms/internal/vision/o;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o;->E(J)V

    return-void
.end method

.method public static w()Lcom/google/android/gms/internal/vision/o$b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/o;->zzl:Lcom/google/android/gms/internal/vision/o;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/N0;->s()Lcom/google/android/gms/internal/vision/N0$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/o$b;

    return-object v0
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/vision/o;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/o;->x(J)V

    return-void
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/vision/o;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/o;->B(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zzk:Lcom/google/android/gms/internal/vision/X0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/X0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/N0;->m(Lcom/google/android/gms/internal/vision/X0;)Lcom/google/android/gms/internal/vision/X0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zzk:Lcom/google/android/gms/internal/vision/X0;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/o;->zzk:Lcom/google/android/gms/internal/vision/X0;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/X;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final E(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/o;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/vision/o;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/o;->zzj:J

    return-void
.end method

.method public final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    sget-object p1, Lcom/google/android/gms/internal/vision/o;->zzm:Lcom/google/android/gms/internal/vision/E1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/vision/o;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/o;->zzm:Lcom/google/android/gms/internal/vision/E1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/vision/N0$a;

    sget-object p3, Lcom/google/android/gms/internal/vision/o;->zzl:Lcom/google/android/gms/internal/vision/o;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/N0$a;-><init>(Lcom/google/android/gms/internal/vision/N0;)V

    sput-object p1, Lcom/google/android/gms/internal/vision/o;->zzm:Lcom/google/android/gms/internal/vision/E1;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/o;->zzl:Lcom/google/android/gms/internal/vision/o;

    return-object p1

    :pswitch_4
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    invoke-static {}, Lcom/google/android/gms/internal/vision/o$a;->f()Lcom/google/android/gms/internal/vision/S0;

    move-result-object v5

    const-string v6, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-string v9, "zzk"

    const-class v10, Lcom/google/android/gms/internal/vision/w;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u001a\u0004\u100c\u0002\u0005\u1008\u0003\u0006\u1002\u0004\u0007\u1002\u0005\u0008\u001b"

    sget-object p3, Lcom/google/android/gms/internal/vision/o;->zzl:Lcom/google/android/gms/internal/vision/o;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/N0;->o(Lcom/google/android/gms/internal/vision/t1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/o$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/o$b;-><init>(Lcom/google/android/gms/internal/vision/z;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/o;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/o;-><init>()V

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

.method public final x(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/o;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/vision/o;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/o;->zzi:J

    return-void
.end method
