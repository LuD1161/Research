.class public abstract Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"ConstraintTrkngWrkr\")"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ld1/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld1/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lb1/c;)Z
    .locals 0

    invoke-static {p0}, Ld1/c;->d(Lb1/c;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lb1/c;)Z
    .locals 0

    invoke-static {p0}, Ld1/c;->e(Lb1/c;)Z

    move-result p0

    return p0
.end method

.method public static final d(Lb1/c;)Z
    .locals 1

    invoke-static {}, Landroidx/work/c$a;->a()Landroidx/work/c$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb1/c;->p(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final e(Lb1/c;)Z
    .locals 1

    invoke-static {}, Landroidx/work/c$a;->b()Landroidx/work/c$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb1/c;->p(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
