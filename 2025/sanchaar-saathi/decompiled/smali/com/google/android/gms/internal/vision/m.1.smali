.class public final Lcom/google/android/gms/internal/vision/m;
.super Lcom/google/android/gms/internal/vision/N0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/m$a;
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/vision/m;

.field private static volatile zze:Lcom/google/android/gms/internal/vision/E1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/E1;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/vision/X0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/X0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/m;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/m;->zzd:Lcom/google/android/gms/internal/vision/m;

    const-class v1, Lcom/google/android/gms/internal/vision/m;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/N0;->q(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/N0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/N0;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/vision/N0;->v()Lcom/google/android/gms/internal/vision/X0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/m;->zzc:Lcom/google/android/gms/internal/vision/X0;

    return-void
.end method

.method public static synthetic w()Lcom/google/android/gms/internal/vision/m;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/m;->zzd:Lcom/google/android/gms/internal/vision/m;

    return-object v0
.end method


# virtual methods
.method public final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lcom/google/android/gms/internal/vision/m;->zze:Lcom/google/android/gms/internal/vision/E1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/vision/m;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/m;->zze:Lcom/google/android/gms/internal/vision/E1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/vision/N0$a;

    sget-object p3, Lcom/google/android/gms/internal/vision/m;->zzd:Lcom/google/android/gms/internal/vision/m;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/N0$a;-><init>(Lcom/google/android/gms/internal/vision/N0;)V

    sput-object p1, Lcom/google/android/gms/internal/vision/m;->zze:Lcom/google/android/gms/internal/vision/E1;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/m;->zzd:Lcom/google/android/gms/internal/vision/m;

    return-object p1

    :pswitch_4
    const-string p1, "zzc"

    const-class p2, Lcom/google/android/gms/internal/vision/v;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/android/gms/internal/vision/m;->zzd:Lcom/google/android/gms/internal/vision/m;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/N0;->o(Lcom/google/android/gms/internal/vision/t1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/m$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/m$a;-><init>(Lcom/google/android/gms/internal/vision/z;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/m;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/m;-><init>()V

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
