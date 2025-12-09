.class public final Lcom/google/gson/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/gson/internal/Excluder;

.field public b:Lcom/google/gson/p;

.field public c:Lcom/google/gson/c;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lcom/google/gson/r;

.field public r:Lcom/google/gson/r;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson/internal/Excluder;->k:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/d;->a:Lcom/google/gson/internal/Excluder;

    sget-object v0, Lcom/google/gson/p;->e:Lcom/google/gson/p;

    iput-object v0, p0, Lcom/google/gson/d;->b:Lcom/google/gson/p;

    sget-object v0, Lcom/google/gson/b;->e:Lcom/google/gson/b;

    iput-object v0, p0, Lcom/google/gson/d;->c:Lcom/google/gson/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/d;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/d;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/d;->g:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/gson/d;->i:I

    iput v1, p0, Lcom/google/gson/d;->j:I

    iput-boolean v0, p0, Lcom/google/gson/d;->k:Z

    iput-boolean v0, p0, Lcom/google/gson/d;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/gson/d;->m:Z

    iput-boolean v0, p0, Lcom/google/gson/d;->n:Z

    iput-boolean v0, p0, Lcom/google/gson/d;->o:Z

    iput-boolean v0, p0, Lcom/google/gson/d;->p:Z

    sget-object v0, Lcom/google/gson/q;->e:Lcom/google/gson/q;

    iput-object v0, p0, Lcom/google/gson/d;->q:Lcom/google/gson/r;

    sget-object v0, Lcom/google/gson/q;->f:Lcom/google/gson/q;

    iput-object v0, p0, Lcom/google/gson/d;->r:Lcom/google/gson/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/util/List;)V
    .locals 4

    sget-boolean v0, Lcom/google/gson/internal/sql/a;->a:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p2, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->b:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;

    invoke-virtual {p2, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->b(Ljava/lang/String;)Lcom/google/gson/s;

    move-result-object p2

    if-eqz v0, :cond_0

    sget-object p3, Lcom/google/gson/internal/sql/a;->c:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;

    invoke-virtual {p3, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->b(Ljava/lang/String;)Lcom/google/gson/s;

    move-result-object v1

    sget-object p3, Lcom/google/gson/internal/sql/a;->b:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;

    invoke-virtual {p3, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->b(Ljava/lang/String;)Lcom/google/gson/s;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    if-eq p3, p1, :cond_3

    sget-object p1, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->b:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->a(II)Lcom/google/gson/s;

    move-result-object p1

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/gson/internal/sql/a;->c:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;

    invoke-virtual {v1, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->a(II)Lcom/google/gson/s;

    move-result-object v1

    sget-object v2, Lcom/google/gson/internal/sql/a;->b:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;

    invoke-virtual {v2, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;->a(II)Lcom/google/gson/s;

    move-result-object p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_1

    :cond_2
    move-object p2, p1

    goto :goto_0

    :goto_1
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public b()Lcom/google/gson/Gson;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/gson/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/gson/d;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/google/gson/d;->h:Ljava/lang/String;

    iget v3, v0, Lcom/google/gson/d;->i:I

    iget v4, v0, Lcom/google/gson/d;->j:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/gson/d;->a(Ljava/lang/String;IILjava/util/List;)V

    new-instance v21, Lcom/google/gson/Gson;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/google/gson/d;->a:Lcom/google/gson/internal/Excluder;

    iget-object v3, v0, Lcom/google/gson/d;->c:Lcom/google/gson/c;

    iget-object v4, v0, Lcom/google/gson/d;->d:Ljava/util/Map;

    iget-boolean v5, v0, Lcom/google/gson/d;->g:Z

    iget-boolean v6, v0, Lcom/google/gson/d;->k:Z

    iget-boolean v7, v0, Lcom/google/gson/d;->o:Z

    iget-boolean v8, v0, Lcom/google/gson/d;->m:Z

    iget-boolean v9, v0, Lcom/google/gson/d;->n:Z

    iget-boolean v10, v0, Lcom/google/gson/d;->p:Z

    iget-boolean v11, v0, Lcom/google/gson/d;->l:Z

    iget-object v12, v0, Lcom/google/gson/d;->b:Lcom/google/gson/p;

    iget-object v13, v0, Lcom/google/gson/d;->h:Ljava/lang/String;

    iget v14, v0, Lcom/google/gson/d;->i:I

    iget v15, v0, Lcom/google/gson/d;->j:I

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/gson/d;->e:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/gson/d;->f:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/gson/d;->q:Lcom/google/gson/r;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/gson/d;->r:Lcom/google/gson/r;

    move-object/from16 v20, v1

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/c;Ljava/util/Map;ZZZZZZZLcom/google/gson/p;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/r;Lcom/google/gson/r;)V

    return-object v21
.end method

.method public c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/d;
    .locals 2

    instance-of v0, p2, Lcom/google/gson/g;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/gson/internal/a;->a(Z)V

    instance-of v0, p2, Lcom/google/gson/g;

    if-eqz v0, :cond_2

    invoke-static {p1}, LC2/a;->b(Ljava/lang/reflect/Type;)LC2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g(LC2/a;Ljava/lang/Object;)Lcom/google/gson/s;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-static {p1}, LC2/a;->b(Ljava/lang/reflect/Type;)LC2/a;

    move-result-object p1

    check-cast p2, Lcom/google/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->a(LC2/a;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/s;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public d(Lcom/google/gson/s;)Lcom/google/gson/d;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
