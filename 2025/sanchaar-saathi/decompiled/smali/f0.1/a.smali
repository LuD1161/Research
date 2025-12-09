.class public abstract Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Ld0/b;Lu3/l;LD3/I;)Lw3/a;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceMigrations"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf0/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lf0/c;-><init>(Ljava/lang/String;Ld0/b;Lu3/l;LD3/I;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Ld0/b;Lu3/l;LD3/I;ILjava/lang/Object;)Lw3/a;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    sget-object p2, Lf0/a$a;->f:Lf0/a$a;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    invoke-static {}, LD3/V;->b()LD3/F;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {v0, p4, v0}, LD3/H0;->b(LD3/p0;ILjava/lang/Object;)LD3/x;

    move-result-object p4

    invoke-virtual {p3, p4}, Ll3/a;->h(Ll3/i;)Ll3/i;

    move-result-object p3

    invoke-static {p3}, LD3/J;->a(Ll3/i;)LD3/I;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lf0/a;->a(Ljava/lang/String;Ld0/b;Lu3/l;LD3/I;)Lw3/a;

    move-result-object p0

    return-object p0
.end method
