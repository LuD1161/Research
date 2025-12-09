.class public final LK0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:LK0/f$a;

.field public static final b:Z

.field public static final c:Ljava/lang/String;

.field public static final d:Lh3/d;

.field public static e:LK0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/f$a;

    invoke-direct {v0}, LK0/f$a;-><init>()V

    sput-object v0, LK0/f$a;->a:LK0/f$a;

    const-class v0, LK0/f;

    invoke-static {v0}, Lv3/x;->b(Ljava/lang/Class;)LA3/b;

    move-result-object v0

    invoke-interface {v0}, LA3/b;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LK0/f$a;->c:Ljava/lang/String;

    sget-object v0, LK0/f$a$a;->f:LK0/f$a$a;

    invoke-static {v0}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object v0

    sput-object v0, LK0/f$a;->d:Lh3/d;

    sget-object v0, LK0/b;->a:LK0/b;

    sput-object v0, LK0/f$a;->e:LK0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, LK0/f$a;->b:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, LK0/f$a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()LL0/a;
    .locals 1

    sget-object v0, LK0/f$a;->d:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL0/a;

    return-object v0
.end method

.method public final d(Landroid/content/Context;)LK0/f;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LK0/f$a;->c()LL0/a;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/window/layout/adapter/sidecar/b;->c:Landroidx/window/layout/adapter/sidecar/b$a;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/b$a;->a(Landroid/content/Context;)Landroidx/window/layout/adapter/sidecar/b;

    move-result-object v0

    :cond_0
    new-instance p1, LK0/i;

    sget-object v1, LK0/m;->b:LK0/m;

    invoke-direct {p1, v1, v0}, LK0/i;-><init>(LK0/l;LL0/a;)V

    sget-object v0, LK0/f$a;->e:LK0/g;

    invoke-interface {v0, p1}, LK0/g;->a(LK0/f;)LK0/f;

    move-result-object p1

    return-object p1
.end method
