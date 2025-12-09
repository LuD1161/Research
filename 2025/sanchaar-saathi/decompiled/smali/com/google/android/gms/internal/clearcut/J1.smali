.class public final Lcom/google/android/gms/internal/clearcut/J1;
.super Lcom/google/android/gms/internal/clearcut/a0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/D0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/J1$a;,
        Lcom/google/android/gms/internal/clearcut/J1$b;
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

.field private static final zzbir:Lcom/google/android/gms/internal/clearcut/J1;


# instance fields
.field private zzbiq:Lcom/google/android/gms/internal/clearcut/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/f0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/J1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/J1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    const-class v1, Lcom/google/android/gms/internal/clearcut/J1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/clearcut/a0;->n(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/a0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/a0;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->p()Lcom/google/android/gms/internal/clearcut/f0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/J1;->zzbiq:Lcom/google/android/gms/internal/clearcut/f0;

    return-void
.end method

.method public static s()Lcom/google/android/gms/internal/clearcut/J1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    return-object v0
.end method

.method public static synthetic t()Lcom/google/android/gms/internal/clearcut/J1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    return-object v0
.end method

.method public static u([B)Lcom/google/android/gms/internal/clearcut/J1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/clearcut/a0;->o(Lcom/google/android/gms/internal/clearcut/a0;[B)Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/J1;

    return-object p0
.end method


# virtual methods
.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/clearcut/K1;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/J1;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/clearcut/J1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/clearcut/J1;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/clearcut/a0$b;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/a0$b;-><init>(Lcom/google/android/gms/internal/clearcut/a0;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/J1;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    return-object p1

    :pswitch_4
    const-string p1, "zzbiq"

    const-class p2, Lcom/google/android/gms/internal/clearcut/J1$b;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/android/gms/internal/clearcut/J1;->zzbir:Lcom/google/android/gms/internal/clearcut/J1;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/a0;->l(Lcom/google/android/gms/internal/clearcut/B0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/clearcut/J1$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/J1$a;-><init>(Lcom/google/android/gms/internal/clearcut/K1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/clearcut/J1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/J1;-><init>()V

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

.method public final r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/J1;->zzbiq:Lcom/google/android/gms/internal/clearcut/f0;

    return-object v0
.end method
