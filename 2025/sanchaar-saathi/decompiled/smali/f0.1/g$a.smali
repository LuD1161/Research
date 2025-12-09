.class public final Lf0/g$a;
.super Landroidx/datastore/preferences/protobuf/w$a;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lf0/g;->O()Lf0/g;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/w$a;-><init>(Landroidx/datastore/preferences/protobuf/w;)V

    return-void
.end method

.method public synthetic constructor <init>(Lf0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf0/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public u(Ljava/lang/Iterable;)Lf0/g$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/w$a;->p()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/w$a;->f:Landroidx/datastore/preferences/protobuf/w;

    check-cast v0, Lf0/g;

    invoke-static {v0, p1}, Lf0/g;->P(Lf0/g;Ljava/lang/Iterable;)V

    return-object p0
.end method
