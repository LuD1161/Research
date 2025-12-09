.class public final Li0/a;
.super Li0/Q;
.source "SourceFile"

# interfaces
.implements Li0/I$l;


# instance fields
.field public final t:Li0/I;

.field public u:Z

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>(Li0/I;)V
    .locals 2

    invoke-virtual {p1}, Li0/I;->t0()Li0/z;

    move-result-object v0

    invoke-virtual {p1}, Li0/I;->v0()Li0/A;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Li0/I;->v0()Li0/A;

    move-result-object v1

    invoke-virtual {v1}, Li0/A;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Li0/Q;-><init>(Li0/z;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    iput v0, p0, Li0/a;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/a;->w:Z

    iput-object p1, p0, Li0/a;->t:Li0/I;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Li0/Q;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Li0/a;->t:Li0/I;

    invoke-virtual {p1, p0}, Li0/I;->h(Li0/a;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li0/a;->q(Z)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/a;->q(Z)I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Li0/Q;->j()Li0/Q;

    iget-object v0, p0, Li0/a;->t:Li0/I;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Li0/I;->b0(Li0/I$l;Z)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Li0/Q;->j()Li0/Q;

    iget-object v0, p0, Li0/a;->t:Li0/I;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Li0/I;->b0(Li0/I$l;Z)V

    return-void
.end method

.method public k(ILi0/p;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Li0/Q;->k(ILi0/p;Ljava/lang/String;I)V

    iget-object p1, p0, Li0/a;->t:Li0/I;

    iput-object p1, p2, Li0/p;->w:Li0/I;

    return-void
.end method

.method public l(Li0/p;)Li0/Q;
    .locals 3

    iget-object v0, p1, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_1

    iget-object v1, p0, Li0/a;->t:Li0/I;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li0/p;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Li0/Q;->l(Li0/p;)Li0/Q;

    move-result-object p1

    return-object p1
.end method

.method public p(I)V
    .locals 7

    iget-boolean v0, p0, Li0/Q;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/Q$a;

    iget-object v5, v4, Li0/Q$a;->b:Li0/p;

    if-eqz v5, :cond_2

    iget v6, v5, Li0/p;->v:I

    add-int/2addr v6, p1

    iput v6, v5, Li0/p;->v:I

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Li0/Q$a;->b:Li0/p;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Li0/Q$a;->b:Li0/p;

    iget v4, v4, Li0/p;->v:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public q(Z)I
    .locals 2

    iget-boolean v0, p0, Li0/a;->u:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Li0/W;

    invoke-direct {v0, v1}, Li0/W;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Li0/a;->r(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/a;->u:Z

    iget-boolean v0, p0, Li0/Q;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v0}, Li0/I;->k()I

    move-result v0

    iput v0, p0, Li0/a;->v:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Li0/a;->v:I

    :goto_0
    iget-object v0, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v0, p0, p1}, Li0/I;->Y(Li0/I$l;Z)V

    iget p1, p0, Li0/a;->v:I

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Li0/a;->s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/Q;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/a;->v:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/a;->u:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Li0/Q;->h:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Li0/Q;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Li0/Q;->e:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Li0/Q;->f:I

    if-nez v0, :cond_3

    iget v0, p0, Li0/Q;->g:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Li0/Q;->l:I

    if-nez v0, :cond_5

    iget-object v0, p0, Li0/Q;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/Q;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Li0/Q;->n:I

    if-nez v0, :cond_7

    iget-object v0, p0, Li0/Q;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/Q;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/Q;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    iget-object v2, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Q$a;

    iget v3, v2, Li0/Q$a;->a:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Li0/Q$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Li0/Q$a;->b:Li0/p;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v3, v2, Li0/Q$a;->d:I

    if-nez v3, :cond_9

    iget v3, v2, Li0/Q$a;->e:I

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Li0/Q$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Li0/Q$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v3, v2, Li0/Q$a;->f:I

    if-nez v3, :cond_b

    iget v3, v2, Li0/Q$a;->g:I

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Li0/Q$a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Li0/Q$a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t()V
    .locals 8

    iget-object v0, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Q$a;

    iget-object v4, v3, Li0/Q$a;->b:Li0/p;

    if-eqz v4, :cond_0

    iget-boolean v5, p0, Li0/a;->w:Z

    iput-boolean v5, v4, Li0/p;->q:Z

    invoke-virtual {v4, v1}, Li0/p;->z1(Z)V

    iget v5, p0, Li0/Q;->h:I

    invoke-virtual {v4, v5}, Li0/p;->y1(I)V

    iget-object v5, p0, Li0/Q;->p:Ljava/util/ArrayList;

    iget-object v6, p0, Li0/Q;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Li0/p;->B1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget v5, v3, Li0/Q$a;->a:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Li0/Q$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v5, p0, Li0/a;->t:Li0/I;

    iget-object v3, v3, Li0/Q$a;->i:Landroidx/lifecycle/g$b;

    invoke-virtual {v5, v4, v3}, Li0/I;->p1(Li0/p;Landroidx/lifecycle/g$b;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v3, p0, Li0/a;->t:Li0/I;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Li0/I;->q1(Li0/p;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->q1(Li0/p;)V

    goto/16 :goto_1

    :pswitch_4
    iget v5, v3, Li0/Q$a;->d:I

    iget v6, v3, Li0/Q$a;->e:I

    iget v7, v3, Li0/Q$a;->f:I

    iget v3, v3, Li0/Q$a;->g:I

    invoke-virtual {v4, v5, v6, v7, v3}, Li0/p;->v1(IIII)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4, v1}, Li0/I;->o1(Li0/p;Z)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->m(Li0/p;)V

    goto :goto_1

    :pswitch_5
    iget v5, v3, Li0/Q$a;->d:I

    iget v6, v3, Li0/Q$a;->e:I

    iget v7, v3, Li0/Q$a;->f:I

    iget v3, v3, Li0/Q$a;->g:I

    invoke-virtual {v4, v5, v6, v7, v3}, Li0/p;->v1(IIII)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->w(Li0/p;)V

    goto :goto_1

    :pswitch_6
    iget v5, v3, Li0/Q$a;->d:I

    iget v6, v3, Li0/Q$a;->e:I

    iget v7, v3, Li0/Q$a;->f:I

    iget v3, v3, Li0/Q$a;->g:I

    invoke-virtual {v4, v5, v6, v7, v3}, Li0/p;->v1(IIII)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4, v1}, Li0/I;->o1(Li0/p;Z)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->s1(Li0/p;)V

    goto :goto_1

    :pswitch_7
    iget v5, v3, Li0/Q$a;->d:I

    iget v6, v3, Li0/Q$a;->e:I

    iget v7, v3, Li0/Q$a;->f:I

    iget v3, v3, Li0/Q$a;->g:I

    invoke-virtual {v4, v5, v6, v7, v3}, Li0/p;->v1(IIII)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->F0(Li0/p;)V

    goto :goto_1

    :pswitch_8
    iget v5, v3, Li0/Q$a;->d:I

    iget v6, v3, Li0/Q$a;->e:I

    iget v7, v3, Li0/Q$a;->f:I

    iget v3, v3, Li0/Q$a;->g:I

    invoke-virtual {v4, v5, v6, v7, v3}, Li0/p;->v1(IIII)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->h1(Li0/p;)V

    goto :goto_1

    :pswitch_9
    iget v5, v3, Li0/Q$a;->d:I

    iget v6, v3, Li0/Q$a;->e:I

    iget v7, v3, Li0/Q$a;->f:I

    iget v3, v3, Li0/Q$a;->g:I

    invoke-virtual {v4, v5, v6, v7, v3}, Li0/p;->v1(IIII)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4, v1}, Li0/I;->o1(Li0/p;Z)V

    iget-object v3, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v3, v4}, Li0/I;->i(Li0/p;)Li0/O;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/a;->v:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Li0/Q;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/Q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 7

    iget-object v0, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Q$a;

    iget-object v3, v2, Li0/Q$a;->b:Li0/p;

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Li0/a;->w:Z

    iput-boolean v4, v3, Li0/p;->q:Z

    invoke-virtual {v3, v1}, Li0/p;->z1(Z)V

    iget v4, p0, Li0/Q;->h:I

    invoke-static {v4}, Li0/I;->l1(I)I

    move-result v4

    invoke-virtual {v3, v4}, Li0/p;->y1(I)V

    iget-object v4, p0, Li0/Q;->q:Ljava/util/ArrayList;

    iget-object v5, p0, Li0/Q;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Li0/p;->B1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget v4, v2, Li0/Q$a;->a:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Li0/Q$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v4, p0, Li0/a;->t:Li0/I;

    iget-object v2, v2, Li0/Q$a;->h:Landroidx/lifecycle/g$b;

    invoke-virtual {v4, v3, v2}, Li0/I;->p1(Li0/p;Landroidx/lifecycle/g$b;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->q1(Li0/p;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Li0/a;->t:Li0/I;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Li0/I;->q1(Li0/p;)V

    goto/16 :goto_1

    :pswitch_4
    iget v4, v2, Li0/Q$a;->d:I

    iget v5, v2, Li0/Q$a;->e:I

    iget v6, v2, Li0/Q$a;->f:I

    iget v2, v2, Li0/Q$a;->g:I

    invoke-virtual {v3, v4, v5, v6, v2}, Li0/p;->v1(IIII)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3, v1}, Li0/I;->o1(Li0/p;Z)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->w(Li0/p;)V

    goto :goto_1

    :pswitch_5
    iget v4, v2, Li0/Q$a;->d:I

    iget v5, v2, Li0/Q$a;->e:I

    iget v6, v2, Li0/Q$a;->f:I

    iget v2, v2, Li0/Q$a;->g:I

    invoke-virtual {v3, v4, v5, v6, v2}, Li0/p;->v1(IIII)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->m(Li0/p;)V

    goto :goto_1

    :pswitch_6
    iget v4, v2, Li0/Q$a;->d:I

    iget v5, v2, Li0/Q$a;->e:I

    iget v6, v2, Li0/Q$a;->f:I

    iget v2, v2, Li0/Q$a;->g:I

    invoke-virtual {v3, v4, v5, v6, v2}, Li0/p;->v1(IIII)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3, v1}, Li0/I;->o1(Li0/p;Z)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->F0(Li0/p;)V

    goto :goto_1

    :pswitch_7
    iget v4, v2, Li0/Q$a;->d:I

    iget v5, v2, Li0/Q$a;->e:I

    iget v6, v2, Li0/Q$a;->f:I

    iget v2, v2, Li0/Q$a;->g:I

    invoke-virtual {v3, v4, v5, v6, v2}, Li0/p;->v1(IIII)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->s1(Li0/p;)V

    goto :goto_1

    :pswitch_8
    iget v4, v2, Li0/Q$a;->d:I

    iget v5, v2, Li0/Q$a;->e:I

    iget v6, v2, Li0/Q$a;->f:I

    iget v2, v2, Li0/Q$a;->g:I

    invoke-virtual {v3, v4, v5, v6, v2}, Li0/p;->v1(IIII)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->i(Li0/p;)Li0/O;

    goto :goto_1

    :pswitch_9
    iget v4, v2, Li0/Q$a;->d:I

    iget v5, v2, Li0/Q$a;->e:I

    iget v6, v2, Li0/Q$a;->f:I

    iget v2, v2, Li0/Q$a;->g:I

    invoke-virtual {v3, v4, v5, v6, v2}, Li0/p;->v1(IIII)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3, v1}, Li0/I;->o1(Li0/p;Z)V

    iget-object v2, p0, Li0/a;->t:Li0/I;

    invoke-virtual {v2, v3}, Li0/I;->h1(Li0/p;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public v(Ljava/util/ArrayList;Li0/p;)Li0/p;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    iget-object v5, v0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li0/Q$a;

    iget v6, v5, Li0/Q$a;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x9

    if-eq v6, v8, :cond_2

    if-eq v6, v10, :cond_1

    const/4 v8, 0x6

    if-eq v6, v8, :cond_1

    const/4 v8, 0x7

    if-eq v6, v8, :cond_8

    const/16 v8, 0x8

    if-eq v6, v8, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v6, v0, Li0/Q;->c:Ljava/util/ArrayList;

    new-instance v8, Li0/Q$a;

    invoke-direct {v8, v11, v3, v7}, Li0/Q$a;-><init>(ILi0/p;Z)V

    invoke-virtual {v6, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-boolean v7, v5, Li0/Q$a;->c:Z

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v5, Li0/Q$a;->b:Li0/p;

    goto/16 :goto_3

    :cond_1
    iget-object v6, v5, Li0/Q$a;->b:Li0/p;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v5, Li0/Q$a;->b:Li0/p;

    if-ne v5, v3, :cond_9

    iget-object v3, v0, Li0/Q;->c:Ljava/util/ArrayList;

    new-instance v6, Li0/Q$a;

    invoke-direct {v6, v11, v5}, Li0/Q$a;-><init>(ILi0/p;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v9

    goto :goto_3

    :cond_2
    iget-object v6, v5, Li0/Q$a;->b:Li0/p;

    iget v8, v6, Li0/p;->B:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    const/4 v13, 0x0

    :goto_1
    if-ltz v12, :cond_6

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Li0/p;

    iget v15, v14, Li0/p;->B:I

    if-ne v15, v8, :cond_5

    if-ne v14, v6, :cond_3

    move v13, v7

    goto :goto_2

    :cond_3
    if-ne v14, v3, :cond_4

    iget-object v3, v0, Li0/Q;->c:Ljava/util/ArrayList;

    new-instance v15, Li0/Q$a;

    invoke-direct {v15, v11, v14, v7}, Li0/Q$a;-><init>(ILi0/p;Z)V

    invoke-virtual {v3, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v9

    :cond_4
    new-instance v15, Li0/Q$a;

    invoke-direct {v15, v10, v14, v7}, Li0/Q$a;-><init>(ILi0/p;Z)V

    iget v2, v5, Li0/Q$a;->d:I

    iput v2, v15, Li0/Q$a;->d:I

    iget v2, v5, Li0/Q$a;->f:I

    iput v2, v15, Li0/Q$a;->f:I

    iget v2, v5, Li0/Q$a;->e:I

    iput v2, v15, Li0/Q$a;->e:I

    iget v2, v5, Li0/Q$a;->g:I

    iput v2, v15, Li0/Q$a;->g:I

    iget-object v2, v0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v4, v7

    :cond_5
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_6
    if-eqz v13, :cond_7

    iget-object v2, v0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    iput v7, v5, Li0/Q$a;->a:I

    iput-boolean v7, v5, Li0/Q$a;->c:Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object v2, v5, Li0/Q$a;->b:Li0/p;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/2addr v4, v7

    goto/16 :goto_0

    :cond_a
    return-object v3
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li0/Q;->k:Ljava/lang/String;

    return-object v0
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Li0/Q;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/Q;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li0/Q;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Li0/Q;->s:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public y(Ljava/util/ArrayList;Li0/p;)Li0/p;
    .locals 5

    iget-object v0, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Q$a;

    iget v3, v2, Li0/Q$a;->a:I

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, v2, Li0/Q$a;->h:Landroidx/lifecycle/g$b;

    iput-object v3, v2, Li0/Q$a;->i:Landroidx/lifecycle/g$b;

    goto :goto_1

    :pswitch_1
    iget-object p2, v2, Li0/Q$a;->b:Li0/p;

    goto :goto_1

    :pswitch_2
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :pswitch_3
    iget-object v2, v2, Li0/Q$a;->b:Li0/p;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :pswitch_4
    iget-object v2, v2, Li0/Q$a;->b:Li0/p;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
