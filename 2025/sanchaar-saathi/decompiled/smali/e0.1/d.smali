.class public final Le0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/d$b;
    }
.end annotation


# static fields
.field public static final f:Le0/d$b;

.field public static final g:Ljava/util/Set;

.field public static final h:Le0/h;


# instance fields
.field public final a:LO3/h;

.field public final b:Le0/c;

.field public final c:Lu3/p;

.field public final d:Lu3/a;

.field public final e:Lh3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le0/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le0/d$b;-><init>(Lv3/g;)V

    sput-object v0, Le0/d;->f:Le0/d$b;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Le0/d;->g:Ljava/util/Set;

    new-instance v0, Le0/h;

    invoke-direct {v0}, Le0/h;-><init>()V

    sput-object v0, Le0/d;->h:Le0/h;

    return-void
.end method

.method public constructor <init>(LO3/h;Le0/c;Lu3/p;Lu3/a;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinatorProducer"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producePath"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le0/d;->a:LO3/h;

    .line 3
    iput-object p2, p0, Le0/d;->b:Le0/c;

    .line 4
    iput-object p3, p0, Le0/d;->c:Lu3/p;

    .line 5
    iput-object p4, p0, Le0/d;->d:Lu3/a;

    .line 6
    new-instance p1, Le0/d$c;

    invoke-direct {p1, p0}, Le0/d$c;-><init>(Le0/d;)V

    invoke-static {p1}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, Le0/d;->e:Lh3/d;

    return-void
.end method

.method public synthetic constructor <init>(LO3/h;Le0/c;Lu3/p;Lu3/a;ILv3/g;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 7
    sget-object p3, Le0/d$a;->f:Le0/d$a;

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Le0/d;-><init>(LO3/h;Le0/c;Lu3/p;Lu3/a;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    sget-object v0, Le0/d;->g:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic c()Le0/h;
    .locals 1

    sget-object v0, Le0/d;->h:Le0/h;

    return-object v0
.end method

.method public static final synthetic d(Le0/d;)LO3/r;
    .locals 0

    invoke-virtual {p0}, Le0/d;->f()LO3/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Le0/d;)Lu3/a;
    .locals 0

    iget-object p0, p0, Le0/d;->d:Lu3/a;

    return-object p0
.end method


# virtual methods
.method public a()Lc0/x;
    .locals 10

    invoke-virtual {p0}, Le0/d;->f()LO3/r;

    move-result-object v0

    invoke-virtual {v0}, LO3/r;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Le0/d;->h:Le0/h;

    monitor-enter v1

    :try_start_0
    sget-object v2, Le0/d;->g:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Le0/e;

    iget-object v5, p0, Le0/d;->a:LO3/h;

    invoke-virtual {p0}, Le0/d;->f()LO3/r;

    move-result-object v6

    iget-object v7, p0, Le0/d;->b:Le0/c;

    iget-object v1, p0, Le0/d;->c:Lu3/p;

    invoke-virtual {p0}, Le0/d;->f()LO3/r;

    move-result-object v2

    iget-object v3, p0, Le0/d;->a:LO3/h;

    invoke-interface {v1, v2, v3}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lc0/n;

    new-instance v9, Le0/d$d;

    invoke-direct {v9, p0}, Le0/d$d;-><init>(Le0/d;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Le0/e;-><init>(LO3/h;LO3/r;Le0/c;Lc0/n;Lu3/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are multiple DataStores active for the same file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw v0
.end method

.method public final f()LO3/r;
    .locals 1

    iget-object v0, p0, Le0/d;->e:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/r;

    return-object v0
.end method
