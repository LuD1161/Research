.class public interface abstract Landroidx/lifecycle/G$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/G$c$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/G$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/G$c$a;->a:Landroidx/lifecycle/G$c$a;

    sput-object v0, Landroidx/lifecycle/G$c;->a:Landroidx/lifecycle/G$c$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/F;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ln0/c;->a:Ln0/c;

    invoke-virtual {p1}, Ln0/c;->c()Landroidx/lifecycle/F;

    move-result-object p1

    return-object p1
.end method

.method public b(LA3/b;Lm0/a;)Landroidx/lifecycle/F;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lt3/a;->a(LA3/b;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/G$c;->c(Ljava/lang/Class;Lm0/a;)Landroidx/lifecycle/F;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Class;Lm0/a;)Landroidx/lifecycle/F;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/lifecycle/G$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/F;

    move-result-object p1

    return-object p1
.end method
