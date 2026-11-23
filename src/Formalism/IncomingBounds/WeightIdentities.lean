import Formalism.IncomingBounds.FlowDegreeBounds.MaxFlowValueAttained
import Formalism.IncomingBounds.FlowDegreeBounds.LemmaF
import Formalism.IncomingBounds.FlowDegreeBounds.LemmaFd

namespace Formalism.IncomingBounds

theorem lemmaFa : LemmaFa := strongDuality
theorem lemmaFc : LemmaFc := lemmaFc_of maxFlowValueAttained strongDuality
theorem incomingBound : IncomingBound := incomingBound_of maxFlowValueAttained strongDuality
end Formalism.IncomingBounds
