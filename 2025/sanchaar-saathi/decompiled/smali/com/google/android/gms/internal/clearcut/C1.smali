.class public final Lcom/google/android/gms/internal/clearcut/C1;
.super Lcom/google/android/gms/internal/clearcut/a0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/D0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/C1$a;
    }
.end annotation


# static fields
.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/K0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/K0;"
        }
    .end annotation
.end field

.field private static final zztx:Lcom/google/android/gms/internal/clearcut/C1;


# instance fields
.field private zzbb:I

.field private zztu:I

.field private zztv:Ljava/lang/String;

.field private zztw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/C1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/C1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/C1;->zztx:Lcom/google/android/gms/internal/clearcut/C1;

    const-class v1, Lcom/google/android/gms/internal/clearcut/C1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/clearcut/a0;->n(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/a0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/a0;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/C1;->zztv:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/C1;->zztw:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r()Lcom/google/android/gms/internal/clearcut/C1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/C1;->zztx:Lcom/google/android/gms/internal/clearcut/C1;

    return-object v0
.end method


# virtual methods
.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/clearcut/F1;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/C1;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/clearcut/C1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/clearcut/C1;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/clearcut/a0$b;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/C1;->zztx:Lcom/google/android/gms/internal/clearcut/C1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/a0$b;-><init>(Lcom/google/android/gms/internal/clearcut/a0;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/C1;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/C1;->zztx:Lcom/google/android/gms/internal/clearcut/C1;

    return-object p1

    :pswitch_4
    const-string p1, "zzbb"

    const-string p2, "zztu"

    const-string p3, "zztv"

    const-string v0, "zztw"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0008\u0001\u0003\u0008\u0002"

    sget-object p3, Lcom/google/android/gms/internal/clearcut/C1;->zztx:Lcom/google/android/gms/internal/clearcut/C1;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/a0;->l(Lcom/google/android/gms/internal/clearcut/B0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/clearcut/C1$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/C1$a;-><init>(Lcom/google/android/gms/internal/clearcut/F1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/clearcut/C1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/C1;-><init>()V

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
