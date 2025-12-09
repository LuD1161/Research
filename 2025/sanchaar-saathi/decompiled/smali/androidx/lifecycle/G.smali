.class public Landroidx/lifecycle/G;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/G$a;,
        Landroidx/lifecycle/G$b;,
        Landroidx/lifecycle/G$c;,
        Landroidx/lifecycle/G$d;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/G$b;

.field public static final c:Lm0/a$b;


# instance fields
.field public final a:Lm0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/G$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/G$b;-><init>(Lv3/g;)V

    sput-object v0, Landroidx/lifecycle/G;->b:Landroidx/lifecycle/G$b;

    sget-object v0, Ln0/c$a;->a:Ln0/c$a;

    sput-object v0, Landroidx/lifecycle/G;->c:Lm0/a$b;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;)V
    .locals 7

    .line 1
    const-string v0, "store"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/G;-><init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;ILv3/g;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lm0/d;

    invoke-direct {v0, p1, p2, p3}, Lm0/d;-><init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;)V

    invoke-direct {p0, v0}, Landroidx/lifecycle/G;-><init>(Lm0/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;ILv3/g;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 4
    sget-object p3, Lm0/a$a;->b:Lm0/a$a;

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/G;-><init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/I;Landroidx/lifecycle/G$c;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/I;->t()Landroidx/lifecycle/H;

    move-result-object v0

    .line 8
    sget-object v1, Ln0/c;->a:Ln0/c;

    invoke-virtual {v1, p1}, Ln0/c;->a(Landroidx/lifecycle/I;)Lm0/a;

    move-result-object p1

    .line 9
    invoke-direct {p0, v0, p2, p1}, Landroidx/lifecycle/G;-><init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;)V

    return-void
.end method

.method public constructor <init>(Lm0/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/G;->a:Lm0/d;

    return-void
.end method


# virtual methods
.method public final a(LA3/b;)Landroidx/lifecycle/F;
    .locals 3

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/G;->a:Lm0/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lm0/d;->b(Lm0/d;LA3/b;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/F;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Landroidx/lifecycle/F;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lt3/a;->c(Ljava/lang/Class;)LA3/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/G;->a(LA3/b;)Landroidx/lifecycle/F;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/F;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/G;->a:Lm0/d;

    invoke-static {p2}, Lt3/a;->c(Ljava/lang/Class;)LA3/b;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lm0/d;->a(LA3/b;Ljava/lang/String;)Landroidx/lifecycle/F;

    move-result-object p1

    return-object p1
.end method
