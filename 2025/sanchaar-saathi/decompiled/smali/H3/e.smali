.class public abstract LH3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/k;


# instance fields
.field public final e:Ll3/i;

.field public final f:I

.field public final g:LF3/a;


# direct methods
.method public constructor <init>(Ll3/i;ILF3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/e;->e:Ll3/i;

    iput p2, p0, LH3/e;->f:I

    iput-object p3, p0, LH3/e;->g:LF3/a;

    return-void
.end method

.method public static synthetic d(LH3/e;LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LH3/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LH3/e$a;-><init>(LG3/e;LH3/e;Ll3/e;)V

    invoke-static {v0, p2}, LD3/J;->b(Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method


# virtual methods
.method public a(Ll3/i;ILF3/a;)LG3/d;
    .locals 1

    iget-object v0, p0, LH3/e;->e:Ll3/i;

    invoke-interface {p1, v0}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p1

    sget-object v0, LF3/a;->e:LF3/a;

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    iget p3, p0, LH3/e;->f:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    :goto_0
    move p2, p3

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p2, p3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    iget-object p3, p0, LH3/e;->g:LF3/a;

    :goto_2
    iget-object v0, p0, LH3/e;->e:Ll3/i;

    invoke-static {p1, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, LH3/e;->f:I

    if-ne p2, v0, :cond_6

    iget-object v0, p0, LH3/e;->g:LF3/a;

    if-ne p3, v0, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, LH3/e;->g(Ll3/i;ILF3/a;)LH3/e;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LH3/e;->d(LH3/e;LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract f(LF3/r;Ll3/e;)Ljava/lang/Object;
.end method

.method public abstract g(Ll3/i;ILF3/a;)LH3/e;
.end method

.method public final h()Lu3/p;
    .locals 2

    new-instance v0, LH3/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LH3/e$b;-><init>(LH3/e;Ll3/e;)V

    return-object v0
.end method

.method public final i()I
    .locals 2

    iget v0, p0, LH3/e;->f:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0
.end method

.method public j(LD3/I;)LF3/s;
    .locals 9

    iget-object v1, p0, LH3/e;->e:Ll3/i;

    invoke-virtual {p0}, LH3/e;->i()I

    move-result v2

    iget-object v3, p0, LH3/e;->g:LF3/a;

    sget-object v4, LD3/K;->g:LD3/K;

    invoke-virtual {p0}, LH3/e;->h()Lu3/p;

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, LF3/p;->c(LD3/I;Ll3/i;ILF3/a;LD3/K;Lu3/l;Lu3/p;ILjava/lang/Object;)LF3/s;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, LH3/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, LH3/e;->e:Ll3/i;

    sget-object v2, Ll3/j;->e:Ll3/j;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LH3/e;->e:Ll3/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, LH3/e;->f:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LH3/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, LH3/e;->g:LF3/a;

    sget-object v2, LF3/a;->e:LF3/a;

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferOverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LH3/e;->g:LF3/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LD3/M;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li3/w;->A(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lu3/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
