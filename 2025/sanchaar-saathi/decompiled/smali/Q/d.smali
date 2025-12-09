.class public abstract LQ/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ/d$e;,
        LQ/d$c;,
        LQ/d$b;,
        LQ/d$a;,
        LQ/d$f;,
        LQ/d$d;
    }
.end annotation


# static fields
.field public static final a:LQ/c;

.field public static final b:LQ/c;

.field public static final c:LQ/c;

.field public static final d:LQ/c;

.field public static final e:LQ/c;

.field public static final f:LQ/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LQ/d$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQ/d$e;-><init>(LQ/d$c;Z)V

    sput-object v0, LQ/d;->a:LQ/c;

    new-instance v0, LQ/d$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LQ/d$e;-><init>(LQ/d$c;Z)V

    sput-object v0, LQ/d;->b:LQ/c;

    new-instance v0, LQ/d$e;

    sget-object v1, LQ/d$b;->a:LQ/d$b;

    invoke-direct {v0, v1, v2}, LQ/d$e;-><init>(LQ/d$c;Z)V

    sput-object v0, LQ/d;->c:LQ/c;

    new-instance v0, LQ/d$e;

    invoke-direct {v0, v1, v3}, LQ/d$e;-><init>(LQ/d$c;Z)V

    sput-object v0, LQ/d;->d:LQ/c;

    new-instance v0, LQ/d$e;

    sget-object v1, LQ/d$a;->b:LQ/d$a;

    invoke-direct {v0, v1, v2}, LQ/d$e;-><init>(LQ/d$c;Z)V

    sput-object v0, LQ/d;->e:LQ/c;

    sget-object v0, LQ/d$f;->b:LQ/d$f;

    sput-object v0, LQ/d;->f:LQ/c;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
